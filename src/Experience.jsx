import { OrbitControls } from '@react-three/drei'
import { Perf } from 'r3f-perf'
import vertex from './shaders/vertex.glsl'
import fragment from './shaders/fragment.glsl'

export default function Experience()
{
    return <>

        <Perf position="top-left" />

        <OrbitControls makeDefault />

        <mesh >
            <planeGeometry args={[4, 4, 4]} />
            <shaderMaterial vertexShader={vertex} fragmentShader={fragment} />
        </mesh>

    </>
}